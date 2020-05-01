.class public final Lo/ZR$AssistContent;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistContent"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private final e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput p1, p0, Lo/ZR$AssistContent;->e:I

    iput-object p2, p0, Lo/ZR$AssistContent;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/ZR$AssistContent;->a:Ljava/lang/String;

    iput-object p4, p0, Lo/ZR$AssistContent;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 117
    iget v0, p0, Lo/ZR$AssistContent;->e:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/ZR$AssistContent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/ZR$AssistContent;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/ZR$AssistContent;->b:Ljava/lang/String;

    return-object v0
.end method
