.class Lo/InstantAppRequest$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstantAppRequest$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InstantAppRequest;->d(I)Lo/CharArrayReader$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstantAppRequest$ActionBar<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lo/InstantAppRequest$1;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
