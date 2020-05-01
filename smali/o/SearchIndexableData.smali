.class public Lo/SearchIndexableData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/OpenableColumns;
.implements Lo/ago;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/OpenableColumns;",
        "Lo/ago;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private c:J

.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:Lo/ContactsContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lo/SearchIndexableData;->d:Ljava/lang/Object;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/SearchIndexableData;->c:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/SearchIndexableData;->d:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lo/SearchIndexableData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/SearchIndexableData<",
            "TT;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lo/SearchIndexableData;

    invoke-direct {v0, p0}, Lo/SearchIndexableData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public ar_()Lo/ContactsContract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/SearchIndexableData;->e:Lo/ContactsContract;

    return-object v0
.end method

.method public d(Lo/ContactsContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lo/SearchIndexableData;->e:Lo/ContactsContract;

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lo/SearchIndexableData;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public getExpires()Ljava/lang/Long;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/SearchIndexableData;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lo/SearchIndexableData;->c:J

    return-wide v0
.end method

.method public setExpires(Ljava/lang/Long;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lo/SearchIndexableData;->a:Ljava/lang/Long;

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lo/SearchIndexableData;->c:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sentinel [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SearchIndexableData;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
