.class public final Lo/QR$Activity;
.super Lo/TimeUnit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/QR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field public b:Lo/HorizontalScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lo/HorizontalScrollView;
    .locals 2

    .line 25
    iget-object v0, p0, Lo/QR$Activity;->b:Lo/HorizontalScrollView;

    if-nez v0, :cond_0

    const-string v1, "text"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.find_more_button)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/HorizontalScrollView;

    iput-object p1, p0, Lo/QR$Activity;->b:Lo/HorizontalScrollView;

    return-void
.end method
