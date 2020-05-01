.class Lo/pM$2;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pM;->e(Lo/sx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/pM;


# direct methods
.method constructor <init>(Lo/pM;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lo/pM$2;->b:Lo/pM;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 362
    invoke-super {p0, p1, p2}, Lo/qc;->a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 363
    sget-object p1, Lo/pM;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "license activated : res: %s"

    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
