.class public final Lo/ZR$VoiceInteractor;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceInteractor"
.end annotation


# static fields
.field public static final b:Lo/ZR$VoiceInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lo/ZR$VoiceInteractor;

    invoke-direct {v0}, Lo/ZR$VoiceInteractor;-><init>()V

    sput-object v0, Lo/ZR$VoiceInteractor;->b:Lo/ZR$VoiceInteractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    return-void
.end method
