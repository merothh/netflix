.class Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UEventObserver$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$3;->b:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/TransactionTracker;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$3;->b:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->b(Lo/TransactionTracker;)Z

    move-result p1

    return p1
.end method
