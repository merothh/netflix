.class public Lo/AbstractCursor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AbstractCursor$Activity;
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
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "List of suppliers is empty!"

    invoke-static {v0, v1}, Lo/StringParceledListSlice;->e(ZLjava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lo/AbstractCursor;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lo/AbstractCursor;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/AbstractCursor;->d:Ljava/util/List;

    return-object p0
.end method

.method public static b(Ljava/util/List;)Lo/AbstractCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TT;>;>;>;)",
            "Lo/AbstractCursor<",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lo/AbstractCursor;

    invoke-direct {v0, p0}, Lo/AbstractCursor;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a()Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lo/AbstractCursor$Activity;

    invoke-direct {v0, p0}, Lo/AbstractCursor$Activity;-><init>(Lo/AbstractCursor;)V

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lo/AbstractCursor;->a()Lo/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 55
    :cond_0
    instance-of v0, p1, Lo/AbstractCursor;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_1
    check-cast p1, Lo/AbstractCursor;

    .line 59
    iget-object v0, p0, Lo/AbstractCursor;->d:Ljava/util/List;

    iget-object p1, p1, Lo/AbstractCursor;->d:Ljava/util/List;

    invoke-static {v0, p1}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lo/AbstractCursor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {p0}, Lo/Signature;->b(Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lo/AbstractCursor;->d:Ljava/util/List;

    const-string v2, "list"

    .line 65
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lo/Signature$ActionBar;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
