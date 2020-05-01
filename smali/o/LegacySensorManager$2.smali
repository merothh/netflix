.class Lo/LegacySensorManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PackageCleanItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LegacySensorManager;->a(Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/LegacySensorManager;

.field final synthetic e:Lo/LegacyFaceDetectMapper;


# direct methods
.method constructor <init>(Lo/LegacySensorManager;Lo/LegacyFaceDetectMapper;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lo/LegacySensorManager$2;->a:Lo/LegacySensorManager;

    iput-object p2, p0, Lo/LegacySensorManager$2;->e:Lo/LegacyFaceDetectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/io/OutputStream;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lo/LegacySensorManager$2;->a:Lo/LegacySensorManager;

    invoke-static {v0}, Lo/LegacySensorManager;->a(Lo/LegacySensorManager;)Lo/CompatResources;

    move-result-object v0

    iget-object v1, p0, Lo/LegacySensorManager$2;->e:Lo/LegacyFaceDetectMapper;

    invoke-virtual {v1}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/CompatResources;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method
