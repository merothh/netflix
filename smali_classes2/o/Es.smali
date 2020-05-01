.class public Lo/Es;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

.field private final b:Landroid/widget/HorizontalScrollView;

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Landroid/widget/HorizontalScrollView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Es;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    iput-object p2, p0, Lo/Es;->b:Landroid/widget/HorizontalScrollView;

    iput-object p3, p0, Lo/Es;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/Es;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    iget-object v1, p0, Lo/Es;->b:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lo/Es;->e:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->e(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Landroid/widget/HorizontalScrollView;Landroid/view/View;)V

    return-void
.end method
