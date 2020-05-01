.class public final Lcom/netflix/android/components/ErrorUIView$uiView$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WakeupStats;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/WakeupStats;

.field final synthetic e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lo/WakeupStats;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/components/ErrorUIView$uiView$2;->b:Lo/WakeupStats;

    iput-object p2, p0, Lcom/netflix/android/components/ErrorUIView$uiView$2;->e:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Landroid/view/View;
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/netflix/android/components/ErrorUIView$uiView$2;->e:Landroid/view/ViewGroup;

    sget v1, Lo/NdefMessage$ActionBar;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    sget v1, Lo/NdefMessage$TaskDescription;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/netflix/android/components/ErrorUIView$uiView$2$1;

    invoke-direct {v2, p0}, Lcom/netflix/android/components/ErrorUIView$uiView$2$1;-><init>(Lcom/netflix/android/components/ErrorUIView$uiView$2;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    sget v1, Lo/NdefMessage$TaskDescription;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/netflix/android/components/ErrorUIView$uiView$2$2;

    invoke-direct {v2, p0}, Lcom/netflix/android/components/ErrorUIView$uiView$2$2;-><init>(Lcom/netflix/android/components/ErrorUIView$uiView$2;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v1, p0, Lcom/netflix/android/components/ErrorUIView$uiView$2;->b:Lo/WakeupStats;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/WakeupStats;->c(Lo/WakeupStats;Z)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/netflix/android/components/ErrorUIView$uiView$2;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
