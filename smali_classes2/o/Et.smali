.class public Lo/Et;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Et;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/Et;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;->d(Landroid/view/View;)V

    return-void
.end method
