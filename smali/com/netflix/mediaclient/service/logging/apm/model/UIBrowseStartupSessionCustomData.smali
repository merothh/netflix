.class public Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;
.super Ljava/lang/Object;
.source "UIBrowseStartupSessionCustomData.java"


# static fields
.field public static final HEAP_SIZE:Ljava/lang/String; = "heapSize"

.field public static final SCREEN_CATEGORY:Ljava/lang/String; = "screenCat"

.field public static final YEAR_CLASS:Ljava/lang/String; = "yearClass"


# instance fields
.field private final heapSizeMb:I

.field private final screenCategory:Ljava/lang/String;

.field private final yearClass:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->heapSizeMb:I

    iput p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->yearClass:I

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->screenCategory:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;
    .locals 6

    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {p0}, Lcom/facebook/device/yearclass/YearClass;->get(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategoryString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;-><init>(IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "heapSize"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->heapSizeMb:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "yearClass"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->yearClass:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "screenCat"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->screenCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
