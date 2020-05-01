.class final Lo/WallpaperService$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WallpaperService;->c(Lo/VoiceInteractionSessionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/VoiceInteractionSessionService;

.field final synthetic e:Lo/WallpaperService;


# direct methods
.method constructor <init>(Lo/WallpaperService;Lo/VoiceInteractionSessionService;)V
    .locals 0

    iput-object p1, p0, Lo/WallpaperService$Activity;->e:Lo/WallpaperService;

    iput-object p2, p0, Lo/WallpaperService$Activity;->b:Lo/VoiceInteractionSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lo/WallpaperService$Activity;->b:Lo/VoiceInteractionSessionService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/VoiceInteractionSessionService;->setShowValidationState(Z)V

    .line 22
    iget-object p1, p0, Lo/WallpaperService$Activity;->b:Lo/VoiceInteractionSessionService;

    invoke-virtual {p1}, Lo/VoiceInteractionSessionService;->c()Lo/FileSynthesisCallback;

    move-result-object p1

    iget-object v0, p0, Lo/WallpaperService$Activity;->e:Lo/WallpaperService;

    invoke-virtual {v0}, Lo/WallpaperService;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/FileSynthesisCallback;->b(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lo/WallpaperService$Activity;->b:Lo/VoiceInteractionSessionService;

    invoke-virtual {p1}, Lo/VoiceInteractionSessionService;->c()Lo/FileSynthesisCallback;

    move-result-object p1

    iget-object v0, p0, Lo/WallpaperService$Activity;->e:Lo/WallpaperService;

    invoke-virtual {v0}, Lo/WallpaperService;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/FileSynthesisCallback;->e(Ljava/lang/String;)V

    return-void
.end method
