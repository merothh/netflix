.class public interface abstract Lo/sU;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Ljava/util/UUID;

.field public static final e:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x5def8ba976d64ac4L    # 3.07741528885689E144

    const-wide v3, -0x4c37d823cae2de1fL    # -3.0064262820489486E-59

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lo/sU;->b:Ljava/util/UUID;

    .line 52
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x4def8ba976d64ac5L    # 2.6577077148592764E67

    const-wide v3, -0x5c37d823cae2de1eL

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lo/sU;->e:Ljava/util/UUID;

    return-void
.end method
