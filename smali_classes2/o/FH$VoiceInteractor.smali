.class public final Lo/FH$VoiceInteractor;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceInteractor"
.end annotation


# static fields
.field public static final d:Lo/FH$VoiceInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/FH$VoiceInteractor;

    invoke-direct {v0}, Lo/FH$VoiceInteractor;-><init>()V

    sput-object v0, Lo/FH$VoiceInteractor;->d:Lo/FH$VoiceInteractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    return-void
.end method
