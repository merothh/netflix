.class public final Lo/Oz;
.super Lo/OL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Oz$ActionBar;
    }
.end annotation


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/CharSequence;

.field private final e:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lo/Oz;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 3

    const-string v0, "buttonText"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0, v0, v1, v2}, Lo/OL;-><init>(ZILo/amc;)V

    iput p1, p0, Lo/Oz;->b:I

    iput-object p2, p0, Lo/Oz;->d:Ljava/lang/CharSequence;

    iput-object p3, p0, Lo/Oz;->c:Ljava/lang/String;

    iput-object p4, p0, Lo/Oz;->e:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/CharSequence;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;ILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x4

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const-string v0, ""

    if-eqz p6, :cond_1

    .line 20
    move-object p2, v0

    check-cast p2, Ljava/lang/CharSequence;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 22
    check-cast p4, Lcom/netflix/cl/model/TrackingInfo;

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lo/Oz;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 19
    iget v0, p0, Lo/Oz;->b:I

    return v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/Oz;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/Oz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/Oz;->e:Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method
