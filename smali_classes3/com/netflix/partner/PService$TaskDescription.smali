.class Lcom/netflix/partner/PService$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/partner/PService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/partner/PService;

.field public e:Lo/aiq;


# direct methods
.method public constructor <init>(Lcom/netflix/partner/PService;Ljava/lang/String;ILo/aiq;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/netflix/partner/PService$TaskDescription;->d:Lcom/netflix/partner/PService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/netflix/partner/PService$TaskDescription;->c:Ljava/lang/String;

    .line 252
    iput p3, p0, Lcom/netflix/partner/PService$TaskDescription;->b:I

    .line 253
    iput-object p4, p0, Lcom/netflix/partner/PService$TaskDescription;->e:Lo/aiq;

    return-void
.end method
