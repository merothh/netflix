.class public final Lo/Pi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 1

    const-string v0, "buttonText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfo"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Pi;->a:Ljava/lang/String;

    iput-object p2, p0, Lo/Pi;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/Pi;->e:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/Pi;->e:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/Pi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/Pi;->c:Ljava/lang/String;

    return-object v0
.end method
