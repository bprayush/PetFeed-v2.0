#! /usr/bin/python3

import pymysql
from .connection import *
from .model import Model


class DBController:

    def __init__(self):
        self.db = pymysql.connect(
            host, user,
            password, database=database,
            autocommit=True)
        self.cursor = pymysql.cursors.DictCursor(self.db)

    def insert(self, model):

        columns = model.tableName + "("
        columnCount = len(model.columnNames)
        count = 1

        for column in model.columnNames:
            if column is 'id':
                continue
            count = count + 1
            if count is not columnCount:
                columns = columns + column + ", "
            else:
                columns = columns + column
        columns = columns + ")"
        count = 1

        values = ""

        mapDatas = model.to_map()

        for column in model.columnNames:
            if column is 'id':
                continue

            count = count + 1
            if count is not columnCount:
                if (mapDatas[column] != None):
                    values = values + '\'' + \
                        str(mapDatas[column]) + '\'' + ', '
                else:
                    values = values + '\'None\'' + ', '
            else:
                if (mapDatas[column] != None):
                    values = values + '\'' + str(mapDatas[column]) + '\''
                else:
                    values = values + '\'None\''

        query = "INSERT INTO {} VALUES({})".format(columns, values)
        error = False
        try:
            self.cursor.execute(query)
            self.db.commit()
        except:
            self.db.rollback()
            error = True

        return not error

    def insertAll(self, models):
        error = False
        try:
            for model in models:
                self.insert(model)
        except:
            error = True

        return not error

    def update(self, model):
        columnCount = len(model.columnNames)
        count = 0

        values = ""

        mapDatas = model.to_map()

        for column in model.columnNames:
            count = count + 1
            if count is not columnCount:
                if (mapDatas[column] != None):
                    values = values + column + '=' + \
                        '\'' + str(mapDatas[column]) + '\'' + ', '
                else:
                    values = values + column + '=' + '\'None\'' + ', '
            else:
                if (mapDatas[column] != None):
                    values = values + column + '=' + \
                        '\'' + str(mapDatas[column]) + '\''
                else:
                    values = values + column + '=' + '\'None\''

        query = "UPDATE {} SET {} WHERE id = {}".format(
            model.tableName, values, model.id)
        error = False

        try:
            self.cursor.execute(query)
            self.db.commit()
        except:
            self.db.rollback()
            error = True

        return not error

    def updateAll(self, models):
        error = False
        try:
            for model in models:
                self.update(model)
        except:
            error = True

        return not error

    def delete(self, model):
        query = "DELETE FROM {} WHERE id = {}".format(
            model.tableName, model.id)
        error = False

        try:
            self.cursor.execute(query)
            self.db.commit()
        except:
            self.db.rollback()
            error = True

        return not error

    def deleteAll(self, model):
        error = False
        query = "DELETE FROM {}".format(model.tableName)
        try:
            self.cursor.execute(query)
            self.db.commit()
        except:
            self.db.rollback()
            error = True

        return not error

    def select(self, model):
        query = "SELECT * FROM {} WHERE id = {}".format(
            model.tableName, model.id)

        self.cursor.execute(query)
        result = self.cursor.fetchone()
        return result

    def selectAll(self, model):
        query = "SELECT * FROM {}".format(
            model.tableName)

        self.cursor.execute(query)
        result = self.cursor.fetchall()
        return result

    def __del__(self):
        self.db.close()
