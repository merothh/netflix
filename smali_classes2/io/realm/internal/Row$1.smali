.class final Lio/realm/internal/Row$1;
.super Ljava/lang/Object;
.source "Row.java"

# interfaces
.implements Lio/realm/internal/Row;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinaryByteArray(J)[B
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(J)Z
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()J
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate(J)Ljava/util/Date;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(J)D
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(J)F
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLink(J)J
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLinkList(J)Lio/realm/internal/LinkView;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(J)J
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isNull(J)Z
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNullLink(J)Z
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullifyLink(J)V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBoolean(JZ)V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloat(JF)V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLink(JJ)V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLong(JJ)V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNull(J)V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setString(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access a row that hasn\'t been loaded or represents \'null\', make sure the instance is loaded and is valid by calling \'RealmObject.isLoaded() && RealmObject.isValid()\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
