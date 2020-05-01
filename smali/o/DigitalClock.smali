.class public final Lo/DigitalClock;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

.field public final b:Landroid/graphics/Bitmap$Config;

.field public final c:Lcom/netflix/mediaclient/api/res/AssetType;

.field public final d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;Landroid/graphics/Bitmap$Config;Lcom/netflix/mediaclient/api/res/AssetType;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lo/DigitalClock;->e:Z

    .line 24
    iput-object p1, p0, Lo/DigitalClock;->d:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lo/DigitalClock;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    .line 26
    iput-object p3, p0, Lo/DigitalClock;->b:Landroid/graphics/Bitmap$Config;

    .line 27
    iput-object p4, p0, Lo/DigitalClock;->c:Lcom/netflix/mediaclient/api/res/AssetType;

    return-void
.end method


# virtual methods
.method public d()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/DigitalClock;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lo/DigitalClock;->e:Z

    return-void
.end method
