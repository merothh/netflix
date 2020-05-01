.class public final Lo/Xr$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Xr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/Xr$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;Z)Lo/Xr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;Z)",
            "Lo/Xr;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayItem"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayUIObservable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 60
    sget-object p4, Lo/gU;->b:Lo/gU$Activity;

    invoke-virtual {p4}, Lo/gU$Activity;->b()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 61
    new-instance p4, Lo/Xs;

    invoke-direct {p4, p1, p2, p3}, Lo/Xs;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V

    check-cast p4, Lo/Xr;

    goto :goto_0

    .line 67
    :cond_0
    new-instance p4, Lo/Xr;

    invoke-direct {p4, p1, p2, p3}, Lo/Xr;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V

    :goto_0
    return-object p4

    .line 74
    :cond_1
    new-instance p4, Lo/Xo;

    invoke-direct {p4, p1, p2, p3}, Lo/Xo;-><init>(Landroid/view/ViewGroup;Lcom/netflix/model/leafs/PostPlayItem;Lio/reactivex/subjects/Subject;)V

    check-cast p4, Lo/Xr;

    return-object p4
.end method
