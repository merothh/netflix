.class Lo/SliceItem$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstantAppRequest$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SliceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstantAppRequest$ActionBar<",
        "Lo/SliceItem<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lo/SliceItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SliceItem<",
            "*>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lo/SliceItem;

    invoke-direct {v0}, Lo/SliceItem;-><init>()V

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/SliceItem$1;->c()Lo/SliceItem;

    move-result-object v0

    return-object v0
.end method
