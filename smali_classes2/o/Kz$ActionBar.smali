.class public final Lo/Kz$ActionBar;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Kz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic b:Lo/Kz;


# direct methods
.method public constructor <init>(Lo/Kz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lo/Kz$ActionBar;->b:Lo/Kz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "position"

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 79
    sget-object p2, Lo/Kz;->c:Lo/Kz$TaskDescription;

    check-cast p2, Lo/MessagePdu;

    .line 81
    sget-object p2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 312
    const-class p2, Landroid/content/Context;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    new-instance v0, Lo/Kz$ActionBar$TaskDescription;

    invoke-direct {v0, p2}, Lo/Kz$ActionBar$TaskDescription;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0, p1}, Lo/Kz$ActionBar$TaskDescription;->a(I)V

    .line 85
    iget-object p1, p0, Lo/Kz$ActionBar;->b:Lo/Kz;

    invoke-virtual {p1}, Lo/Kz;->d()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2;)V

    :cond_0
    return-void
.end method
