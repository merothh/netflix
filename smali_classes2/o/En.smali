.class public Lo/En;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Lo/Bc;

.field private final d:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lo/Bc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/En;->d:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iput-object p2, p0, Lo/En;->b:Lo/Bc;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/En;->d:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v1, p0, Lo/En;->b:Lo/Bc;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->d(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lo/Bc;Landroid/view/View;)V

    return-void
.end method
