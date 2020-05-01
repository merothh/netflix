.class public Lo/CrossProcessCursor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrossProcessCursor$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/UserInfo<",
        "Lo/XmlResourceParser<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TT;>;>;>;Z)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "List of suppliers is empty!"

    invoke-static {v0, v1}, Lo/StringParceledListSlice;->e(ZLjava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lo/CrossProcessCursor;->b:Ljava/util/List;

    .line 44
    iput-boolean p2, p0, Lo/CrossProcessCursor;->e:Z

    return-void
.end method

.method public static a(Ljava/util/List;Z)Lo/CrossProcessCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TT;>;>;>;Z)",
            "Lo/CrossProcessCursor<",
            "TT;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lo/CrossProcessCursor;

    invoke-direct {v0, p0, p1}, Lo/CrossProcessCursor;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method static synthetic a(Lo/CrossProcessCursor;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lo/CrossProcessCursor;->e:Z

    return p0
.end method

.method static synthetic b(Lo/CrossProcessCursor;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/CrossProcessCursor;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/CrossProcessCursor;->e()Lo/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public e()Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lo/CrossProcessCursor$Activity;

    invoke-direct {v0, p0}, Lo/CrossProcessCursor$Activity;-><init>(Lo/CrossProcessCursor;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    instance-of v0, p1, Lo/CrossProcessCursor;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_1
    check-cast p1, Lo/CrossProcessCursor;

    .line 94
    iget-object v0, p0, Lo/CrossProcessCursor;->b:Ljava/util/List;

    iget-object p1, p1, Lo/CrossProcessCursor;->b:Ljava/util/List;

    invoke-static {v0, p1}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-object v0, p0, Lo/CrossProcessCursor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    invoke-static {p0}, Lo/Signature;->b(Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lo/CrossProcessCursor;->b:Ljava/util/List;

    const-string v2, "list"

    .line 100
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lo/Signature$ActionBar;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
