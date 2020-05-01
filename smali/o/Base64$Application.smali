.class public final Lo/Base64$Application;
.super Lo/LoadedApk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Base64;->d(Landroid/content/Context;Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lo/Base64;

.field final synthetic h:Lo/alB;


# direct methods
.method constructor <init>(Lo/Base64;Ljava/lang/String;Landroid/content/Context;Lo/alB;ILjava/lang/String;Lorg/json/JSONObject;Lo/FragmentManagerNonConfig$StateListAnimator;Lo/FragmentManagerNonConfig$Activity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lo/alB;",
            "I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lo/FragmentManagerNonConfig$StateListAnimator;",
            "Lo/FragmentManagerNonConfig$Activity;",
            ")V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lo/Base64$Application;->e:Lo/Base64;

    iput-object p2, p0, Lo/Base64$Application;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/Base64$Application;->d:Landroid/content/Context;

    iput-object p4, p0, Lo/Base64$Application;->h:Lo/alB;

    move-object v0, p0

    move v1, p5

    move-object v2, p6

    move-object v3, p7

    move-object v4, p8

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lo/LoadedApk;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lo/FragmentManagerNonConfig$StateListAnimator;Lo/FragmentManagerNonConfig$Activity;)V

    return-void
.end method


# virtual methods
.method public q()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 284
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
