.class Lo/IL$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DN$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/IL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/IL;)V
    .locals 1

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1581
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/IL$ActionBar;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public e(II)V
    .locals 2

    .line 1586
    iget-object v0, p0, Lo/IL$ActionBar;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/IL;

    if-nez v0, :cond_0

    return-void

    .line 1590
    :cond_0
    invoke-static {v0}, Lo/IL;->g(Lo/IL;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p2, p2, -0x14

    if-ne p1, p2, :cond_1

    .line 1595
    invoke-static {v0}, Lo/IL;->f(Lo/IL;)V

    :cond_1
    return-void
.end method
