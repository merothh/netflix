.class Lo/NetworkEvent;
.super Lo/VrStateCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VrStateCallback<",
        "Lo/DeviceAdminService;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/NetworkEvent$3;

    invoke-direct {v0}, Lo/NetworkEvent$3;-><init>()V

    sput-object v0, Lo/NetworkEvent;->a:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lo/SearchDialog;Landroid/content/Context;Lo/VrStateCallback$TaskDescription;)V
    .locals 7

    .line 38
    sget-object v5, Lo/NetworkEvent;->a:Ljava/util/Comparator;

    const-string v3, "/bugsnag-sessions/"

    const/16 v4, 0x80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lo/VrStateCallback;-><init>(Lo/SearchDialog;Landroid/content/Context;Ljava/lang/String;ILjava/util/Comparator;Lo/VrStateCallback$TaskDescription;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 45
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lo/NetworkEvent;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s%s%d.json"

    .line 45
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
