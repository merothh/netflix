.class public final Lo/DC$VoiceInteractor;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceInteractor"
.end annotation


# static fields
.field public static final e:Lo/DC$VoiceInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lo/DC$VoiceInteractor;

    invoke-direct {v0}, Lo/DC$VoiceInteractor;-><init>()V

    sput-object v0, Lo/DC$VoiceInteractor;->e:Lo/DC$VoiceInteractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    return-void
.end method
