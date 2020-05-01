.class final Lcom/netflix/android/components/ErrorUIView$uiView$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/components/ErrorUIView$uiView$2;->e()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/android/components/ErrorUIView$uiView$2;


# direct methods
.method constructor <init>(Lcom/netflix/android/components/ErrorUIView$uiView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/components/ErrorUIView$uiView$2$1;->a:Lcom/netflix/android/components/ErrorUIView$uiView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/netflix/android/components/ErrorUIView$uiView$2$1;->a:Lcom/netflix/android/components/ErrorUIView$uiView$2;

    iget-object p1, p1, Lcom/netflix/android/components/ErrorUIView$uiView$2;->b:Lo/WakeupStats;

    sget-object v0, Lo/ValidationProbeEvent$TaskDescription;->a:Lo/ValidationProbeEvent$TaskDescription;

    invoke-virtual {p1, v0}, Lo/WakeupStats;->e(Ljava/lang/Object;)V

    return-void
.end method
