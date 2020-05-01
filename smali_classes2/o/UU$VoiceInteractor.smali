.class public final Lo/UU$VoiceInteractor;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceInteractor"
.end annotation


# static fields
.field public static final a:Lo/UU$VoiceInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/UU$VoiceInteractor;

    invoke-direct {v0}, Lo/UU$VoiceInteractor;-><init>()V

    sput-object v0, Lo/UU$VoiceInteractor;->a:Lo/UU$VoiceInteractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
