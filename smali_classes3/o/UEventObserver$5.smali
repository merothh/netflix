.class Lo/UEventObserver$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UEventObserver;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/UEventObserver;


# direct methods
.method constructor <init>(Lo/UEventObserver;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/UEventObserver$5;->d:Lo/UEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    check-cast p1, Lo/Temperature;

    .line 71
    invoke-virtual {p1}, Lo/Temperature;->c()Lo/TransactionTracker;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lo/UEventObserver$5;->d:Lo/UEventObserver;

    invoke-static {v0}, Lo/UEventObserver;->d(Lo/UEventObserver;)Lo/UEventObserver$TaskDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/UEventObserver$TaskDescription;->d(Lo/TransactionTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lo/UEventObserver$5;->d:Lo/UEventObserver;

    invoke-virtual {v0, p1}, Lo/UEventObserver;->setSelectedTab(Lo/TransactionTracker;)V

    :cond_0
    return-void
.end method
