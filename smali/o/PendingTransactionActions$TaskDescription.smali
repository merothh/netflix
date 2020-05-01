.class Lo/PendingTransactionActions$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PendingTransactionActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/Slice;Z)Lo/WindowVisibilityItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Slice<",
            "TR;>;Z)",
            "Lo/WindowVisibilityItem<",
            "TR;>;"
        }
    .end annotation

    .line 484
    new-instance v0, Lo/WindowVisibilityItem;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lo/WindowVisibilityItem;-><init>(Lo/Slice;ZZ)V

    return-object v0
.end method
