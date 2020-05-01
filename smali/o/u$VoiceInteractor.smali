.class public final Lo/u$VoiceInteractor;
.super Lo/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceInteractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/u<",
        "Landroid/content/Context;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/u$VoiceInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lo/u$VoiceInteractor;

    invoke-direct {v0}, Lo/u$VoiceInteractor;-><init>()V

    sput-object v0, Lo/u$VoiceInteractor;->e:Lo/u$VoiceInteractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "Search"

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, v0, v1}, Lo/u;-><init>(Ljava/lang/String;Lo/amc;)V

    return-void
.end method
