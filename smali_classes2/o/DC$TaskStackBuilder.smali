.class public final Lo/DC$TaskStackBuilder;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskStackBuilder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZZLjava/lang/String;I)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/DC$TaskStackBuilder;->a:Ljava/lang/String;

    iput-object p2, p0, Lo/DC$TaskStackBuilder;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-boolean p3, p0, Lo/DC$TaskStackBuilder;->c:Z

    iput-boolean p4, p0, Lo/DC$TaskStackBuilder;->d:Z

    iput-object p5, p0, Lo/DC$TaskStackBuilder;->b:Ljava/lang/String;

    iput p6, p0, Lo/DC$TaskStackBuilder;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 180
    iget-object v0, p0, Lo/DC$TaskStackBuilder;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lo/DC$TaskStackBuilder;->d:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lo/DC$TaskStackBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lo/DC$TaskStackBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lo/DC$TaskStackBuilder;->c:Z

    return v0
.end method

.method public final g()I
    .locals 1

    .line 184
    iget v0, p0, Lo/DC$TaskStackBuilder;->g:I

    return v0
.end method
