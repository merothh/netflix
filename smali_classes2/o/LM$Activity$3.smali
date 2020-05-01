.class final Lo/LM$Activity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LM$Activity;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/hW;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/LM$Activity;

.field final synthetic b:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lo/LM$Activity;Lio/reactivex/SingleEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/LM$Activity$3;->a:Lo/LM$Activity;

    iput-object p2, p0, Lo/LM$Activity$3;->b:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lo/LM$Activity$3;->b(Lo/hW;)V

    return-void
.end method

.method public final b(Lo/hW;)V
    .locals 12

    .line 412
    new-instance v11, Lo/KeymasterLongArgument;

    .line 413
    iget-object v0, p0, Lo/LM$Activity$3;->a:Lo/LM$Activity;

    iget-object v1, v0, Lo/LM$Activity;->c:Ljava/lang/String;

    .line 416
    sget-object v8, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->c:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x74

    const/4 v10, 0x0

    move-object v0, v11

    .line 412
    invoke-direct/range {v0 .. v10}, Lo/KeymasterLongArgument;-><init>(Ljava/lang/String;ZZZZZZLcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;ILo/amc;)V

    .line 418
    new-instance v0, Lo/LM$Activity$3$ActionBar;

    invoke-direct {v0, p0}, Lo/LM$Activity$3$ActionBar;-><init>(Lo/LM$Activity$3;)V

    .line 427
    check-cast v11, Lo/SettingsValidators;

    check-cast v0, Lo/ci;

    invoke-interface {p1, v11, v0}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    return-void
.end method
