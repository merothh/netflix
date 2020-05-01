.class Lcom/netflix/msl/msg/MslControl$VoiceInteractor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoiceInteractor"
.end annotation


# instance fields
.field public final d:Z

.field public final e:Lo/ahM;


# direct methods
.method private constructor <init>(Lo/ahM;Z)V
    .locals 0

    .line 1490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1491
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;->e:Lo/ahM;

    .line 1492
    iput-boolean p2, p0, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/ahM;ZLcom/netflix/msl/msg/MslControl$3;)V
    .locals 0

    .line 1480
    invoke-direct {p0, p1, p2}, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;-><init>(Lo/ahM;Z)V

    return-void
.end method
