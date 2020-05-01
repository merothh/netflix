.class final Lo/SimpleMonthView$Activity;
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
.field final synthetic c:Lo/SimpleMonthView;

.field final synthetic d:Lo/SimpleCursorAdapter;

.field final synthetic e:Lo/SimpleCursorAdapter;


# direct methods
.method constructor <init>(Lo/SimpleMonthView;Lo/SimpleCursorAdapter;Lo/SimpleCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    iput-object p2, p0, Lo/SimpleMonthView$Activity;->e:Lo/SimpleCursorAdapter;

    iput-object p3, p0, Lo/SimpleMonthView$Activity;->d:Lo/SimpleCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lo/SimpleMonthView$Activity;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method public final b(Ljava/lang/Integer;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/SimpleMonthView;->c(Lo/SimpleMonthView;Z)V

    .line 99
    iget-object v0, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {v0, v1}, Lo/SimpleMonthView;->e(Lo/SimpleMonthView;Z)V

    .line 100
    iget-object v0, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {v0}, Lo/SimpleMonthView;->c(Lo/SimpleMonthView;)Lo/SimpleCursorTreeAdapter;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/SimpleCursorTreeAdapter;->a(I)V

    .line 101
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 102
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 103
    sget-object v1, Lcom/netflix/cl/model/AppView;->audioSelector:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    .line 102
    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 104
    new-instance v1, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    iget-object v2, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {v2}, Lo/SimpleMonthView;->c(Lo/SimpleMonthView;)Lo/SimpleCursorTreeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/SimpleCursorTreeAdapter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 106
    iget-object p1, p0, Lo/SimpleMonthView$Activity;->e:Lo/SimpleCursorAdapter;

    invoke-virtual {p1}, Lo/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 108
    iget-object p1, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {p1}, Lo/SimpleMonthView;->a(Lo/SimpleMonthView;)Lcom/netflix/mediaclient/media/Language;

    move-result-object p1

    iget-object v0, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {v0}, Lo/SimpleMonthView;->c(Lo/SimpleMonthView;)Lo/SimpleCursorTreeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/SimpleCursorTreeAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    .line 109
    iget-object p1, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {p1}, Lo/SimpleMonthView;->d(Lo/SimpleMonthView;)Lo/SpellChecker;

    move-result-object p1

    iget-object v0, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {v0}, Lo/SimpleMonthView;->a(Lo/SimpleMonthView;)Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getUsedSubtitles()Ljava/util/List;

    move-result-object v0

    const-string v1, "language.usedSubtitles"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/akz;->j(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/SpellChecker;->e(Ljava/util/List;)V

    .line 110
    iget-object p1, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {p1}, Lo/SimpleMonthView;->d(Lo/SimpleMonthView;)Lo/SpellChecker;

    move-result-object p1

    iget-object v0, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {v0}, Lo/SimpleMonthView;->a(Lo/SimpleMonthView;)Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getCurrentSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/SpellChecker;->b(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)V

    .line 111
    iget-object p1, p0, Lo/SimpleMonthView$Activity;->d:Lo/SimpleCursorAdapter;

    invoke-virtual {p1}, Lo/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 112
    iget-object p1, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {p1}, Lo/SimpleMonthView;->c(Lo/SimpleMonthView;)Lo/SimpleCursorTreeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/SimpleCursorTreeAdapter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/media/AudioSource;

    iget-object v0, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {v0}, Lo/SimpleMonthView;->d(Lo/SimpleMonthView;)Lo/SpellChecker;

    move-result-object v0

    invoke-virtual {v0}, Lo/SpellChecker;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {p1}, Lo/SimpleMonthView;->d(Lo/SimpleMonthView;)Lo/SpellChecker;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/SpellChecker;->a(I)V

    .line 114
    iget-object p1, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {p1}, Lo/SimpleMonthView;->a(Lo/SimpleMonthView;)Lcom/netflix/mediaclient/media/Language;

    move-result-object p1

    iget-object v0, p0, Lo/SimpleMonthView$Activity;->c:Lo/SimpleMonthView;

    invoke-static {v0}, Lo/SimpleMonthView;->d(Lo/SimpleMonthView;)Lo/SpellChecker;

    move-result-object v0

    invoke-virtual {v0}, Lo/SpellChecker;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 115
    iget-object p1, p0, Lo/SimpleMonthView$Activity;->d:Lo/SimpleCursorAdapter;

    invoke-virtual {p1}, Lo/SimpleCursorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
