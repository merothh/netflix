.class public Lo/Eq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Lo/Bc;

.field private final d:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Lo/Bc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Eq;->d:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    iput-object p2, p0, Lo/Eq;->b:Lo/Bc;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/Eq;->d:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    iget-object v1, p0, Lo/Eq;->b:Lo/Bc;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->d(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Lo/Bc;Landroid/view/View;)V

    return-void
.end method
