.class public Lo/Em;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Em;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lo/Em;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    return-void
.end method
