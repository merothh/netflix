.class public Lo/Ep;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lo/DQ;

.field private final c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Lo/DQ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ep;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    iput-object p2, p0, Lo/Ep;->a:Lo/DQ;

    iput p3, p0, Lo/Ep;->d:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lo/Ep;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    iget-object v1, p0, Lo/Ep;->a:Lo/DQ;

    iget v2, p0, Lo/Ep;->d:I

    invoke-static {v0, v1, v2, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->c(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Lo/DQ;ILandroid/view/View;)V

    return-void
.end method
