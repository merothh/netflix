.class public Lio/realm/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static deleteRealm(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    .line 108
    const-string/jumbo v0, ".management"

    .line 109
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".management"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_1

    .line 115
    array-length v6, v5

    move v3, v2

    move v0, v1

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    .line 116
    if-eqz v0, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 115
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 116
    goto :goto_1

    :cond_1
    move v0, v1

    .line 119
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 122
    :goto_2
    if-eqz v0, :cond_4

    invoke-static {p0, p1, p2}, Lio/realm/internal/Util;->deletes(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    return v1

    :cond_3
    move v0, v2

    .line 119
    goto :goto_2

    :cond_4
    move v1, v2

    .line 122
    goto :goto_3
.end method

.method private static deletes(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 128
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v6

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".lock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v7

    const/4 v2, 0x2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log_a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log_b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 139
    if-nez v3, :cond_0

    .line 140
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 141
    const-string/jumbo v3, "Could not delete the file %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static getOriginalModelClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 65
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lio/realm/RealmObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 69
    :cond_0
    return-object p0
.end method

.method public static getTablePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lio/realm/internal/Util;->nativeGetTablePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native nativeGetTablePrefix()Ljava/lang/String;
.end method

.method static native nativeSetDebugLevel(I)V
.end method

.method public static setDebugLevel(I)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0}, Lio/realm/internal/Util;->nativeSetDebugLevel(I)V

    .line 42
    return-void
.end method
