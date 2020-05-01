.class public abstract Lo/ActivityRecognitionEvent;
.super Lo/SharedLibraryNames;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/SharedLibraryNames<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/InputManagerInternal;

.field private final c:Ljava/lang/String;

.field private final e:Lo/BrightnessChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BrightnessChangeEvent<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "TT;>;",
            "Lo/InputManagerInternal;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lo/SharedLibraryNames;-><init>()V

    .line 33
    iput-object p1, p0, Lo/ActivityRecognitionEvent;->e:Lo/BrightnessChangeEvent;

    .line 34
    iput-object p2, p0, Lo/ActivityRecognitionEvent;->b:Lo/InputManagerInternal;

    .line 35
    iput-object p3, p0, Lo/ActivityRecognitionEvent;->a:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lo/ActivityRecognitionEvent;->c:Ljava/lang/String;

    .line 38
    iget-object p1, p0, Lo/ActivityRecognitionEvent;->b:Lo/InputManagerInternal;

    iget-object p2, p0, Lo/ActivityRecognitionEvent;->c:Ljava/lang/String;

    iget-object p3, p0, Lo/ActivityRecognitionEvent;->a:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 4

    .line 62
    iget-object v0, p0, Lo/ActivityRecognitionEvent;->b:Lo/InputManagerInternal;

    iget-object v1, p0, Lo/ActivityRecognitionEvent;->c:Ljava/lang/String;

    iget-object v2, p0, Lo/ActivityRecognitionEvent;->a:Ljava/lang/String;

    .line 65
    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lo/ActivityRecognitionEvent;->i()Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 62
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lo/InputManagerInternal;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    iget-object v0, p0, Lo/ActivityRecognitionEvent;->e:Lo/BrightnessChangeEvent;

    invoke-interface {v0}, Lo/BrightnessChangeEvent;->c()V

    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected c(Ljava/lang/Exception;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected d(Ljava/lang/Exception;)V
    .locals 4

    .line 52
    iget-object v0, p0, Lo/ActivityRecognitionEvent;->b:Lo/InputManagerInternal;

    iget-object v1, p0, Lo/ActivityRecognitionEvent;->c:Ljava/lang/String;

    iget-object v2, p0, Lo/ActivityRecognitionEvent;->a:Ljava/lang/String;

    .line 56
    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lo/ActivityRecognitionEvent;->c(Ljava/lang/Exception;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 52
    :goto_0
    invoke-interface {v0, v1, v2, p1, v3}, Lo/InputManagerInternal;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 57
    iget-object v0, p0, Lo/ActivityRecognitionEvent;->e:Lo/BrightnessChangeEvent;

    invoke-interface {v0, p1}, Lo/BrightnessChangeEvent;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/ActivityRecognitionEvent;->b:Lo/InputManagerInternal;

    iget-object v1, p0, Lo/ActivityRecognitionEvent;->c:Ljava/lang/String;

    iget-object v2, p0, Lo/ActivityRecognitionEvent;->a:Ljava/lang/String;

    .line 46
    invoke-interface {v0, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lo/ActivityRecognitionEvent;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 43
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    iget-object v0, p0, Lo/ActivityRecognitionEvent;->e:Lo/BrightnessChangeEvent;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method protected e(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
