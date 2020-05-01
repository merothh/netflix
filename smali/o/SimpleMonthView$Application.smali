.class final Lo/SimpleMonthView$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SimpleMonthView;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/SimpleMonthView;

.field final synthetic b:Lo/SimpleCursorAdapter;


# direct methods
.method constructor <init>(Lo/SimpleMonthView;Lo/SimpleCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/SimpleMonthView$Application;->a:Lo/SimpleMonthView;

    iput-object p2, p0, Lo/SimpleMonthView$Application;->b:Lo/SimpleCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lo/SimpleMonthView$Application;->a:Lo/SimpleMonthView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/SimpleMonthView;->e(Lo/SimpleMonthView;Z)V

    .line 83
    iget-object v0, p0, Lo/SimpleMonthView$Application;->a:Lo/SimpleMonthView;

    invoke-static {v0}, Lo/SimpleMonthView;->d(Lo/SimpleMonthView;)Lo/SpellChecker;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/SpellChecker;->a(I)V

    .line 84
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 85
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 86
    sget-object v1, Lcom/netflix/cl/model/AppView;->audioSubtitlesSelector:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    .line 85
    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 88
    new-instance v1, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    iget-object v2, p0, Lo/SimpleMonthView$Application;->a:Lo/SimpleMonthView;

    invoke-static {v2}, Lo/SimpleMonthView;->d(Lo/SimpleMonthView;)Lo/SpellChecker;

    move-result-object v2

    invoke-virtual {v2}, Lo/SpellChecker;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 90
    iget-object p1, p0, Lo/SimpleMonthView$Application;->b:Lo/SimpleCursorAdapter;

    invoke-virtual {p1}, Lo/SimpleCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lo/SimpleMonthView$Application;->a(Ljava/lang/Integer;)V

    return-void
.end method
