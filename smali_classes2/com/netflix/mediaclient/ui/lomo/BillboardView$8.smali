.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$8;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$8;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .line 974
    invoke-super/range {p0 .. p7}, Lo/Ai;->b(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 975
    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 980
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$8;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lo/Db;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 984
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$8;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->e(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lo/Db;

    move-result-object v0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lo/Db;->d(Ljava/lang/String;JJ)V

    .line 985
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$8;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->a(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    :cond_1
    :goto_0
    return-void
.end method
