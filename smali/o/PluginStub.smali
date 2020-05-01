.class public final Lo/PluginStub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PluginList;


# static fields
.field public static final c:Lo/PluginStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lo/PluginStub;

    invoke-direct {v0}, Lo/PluginStub;-><init>()V

    sput-object v0, Lo/PluginStub;->c:Lo/PluginStub;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
