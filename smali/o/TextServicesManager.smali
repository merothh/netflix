.class public final Lo/TextServicesManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/TextServicesManager;

    invoke-direct {v0}, Lo/TextServicesManager;-><init>()V

    sput-object v0, Lo/TextServicesManager;->a:Lo/TextServicesManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final e()I
    .locals 1

    .line 19
    invoke-static {}, Lo/kD;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->i:I

    goto :goto_0

    .line 23
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->g:I

    :goto_0
    return v0
.end method
