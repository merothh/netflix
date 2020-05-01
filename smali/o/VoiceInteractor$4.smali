.class Lo/VoiceInteractor$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/VoiceInteractor;


# direct methods
.method constructor <init>(Lo/VoiceInteractor;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lo/VoiceInteractor$4;->e:Lo/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 226
    iget-object v0, p0, Lo/VoiceInteractor$4;->e:Lo/VoiceInteractor;

    iget v0, v0, Lo/VoiceInteractor;->q:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lo/VoiceInteractor$4;->e:Lo/VoiceInteractor;

    invoke-virtual {v0, v1}, Lo/VoiceInteractor;->i(I)V

    .line 229
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor$4;->e:Lo/VoiceInteractor;

    iget v0, v0, Lo/VoiceInteractor;->q:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lo/VoiceInteractor$4;->e:Lo/VoiceInteractor;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Lo/VoiceInteractor;->i(I)V

    .line 232
    :cond_1
    iget-object v0, p0, Lo/VoiceInteractor$4;->e:Lo/VoiceInteractor;

    iput-boolean v1, v0, Lo/VoiceInteractor;->s:Z

    .line 233
    iput v1, v0, Lo/VoiceInteractor;->q:I

    return-void
.end method
