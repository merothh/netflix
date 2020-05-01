.class final Lo/ZQ$ActionBar;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:J

.field final synthetic b:Lo/ZQ;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ZQ;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    sget-object p1, Lo/ZQ;->p:Lo/ZQ$Application;

    invoke-virtual {p1}, Lo/ZQ$Application;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/ZQ$ActionBar;->d:Ljava/lang/String;

    iput-wide p3, p0, Lo/ZQ$ActionBar;->a:J

    return-void
.end method


# virtual methods
.method public b(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .line 190
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 192
    iget-wide v0, p0, Lo/ZQ$ActionBar;->a:J

    iget-object v2, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    invoke-virtual {v2}, Lo/ZQ;->y()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    iget-object v0, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    invoke-virtual {v0}, Lo/ZQ;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 199
    :cond_0
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-static {v0}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;)V

    .line 201
    iget-object v0, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ZQ;->a(Lo/ZQ;Z)V

    .line 202
    iget-object v0, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    invoke-static {v0, v1}, Lo/ZQ;->d(Lo/ZQ;Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 204
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 214
    :cond_1
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    invoke-static {v1}, Lo/ZQ;->c(Lo/ZQ;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 215
    iget-object p2, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    check-cast v0, Ljava/lang/Long;

    invoke-static {p2, v0}, Lo/ZQ;->c(Lo/ZQ;Ljava/lang/Long;)V

    if-eqz p1, :cond_3

    .line 217
    invoke-interface {p1}, Lo/AH;->getNumLoMos()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 224
    :cond_2
    sget-object p2, Lo/ZQ;->p:Lo/ZQ$Application;

    check-cast p2, Lo/MessagePdu;

    .line 226
    iget-object p2, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    iget-object v0, p0, Lo/ZQ$ActionBar;->d:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lo/ZQ;->d(Lo/ZQ;Lo/AH;Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/ZQ$ActionBar;->d:Ljava/lang/String;

    invoke-interface {p1}, Lo/AH;->getLolomoId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    return-void

    .line 218
    :cond_3
    :goto_0
    sget-object p1, Lo/ZQ;->p:Lo/ZQ$Application;

    check-cast p1, Lo/MessagePdu;

    .line 219
    iget-object p1, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    invoke-virtual {p1}, Lo/ZQ;->J()V

    return-void

    .line 205
    :cond_4
    :goto_1
    sget-object p1, Lo/ZQ;->p:Lo/ZQ$Application;

    check-cast p1, Lo/MessagePdu;

    .line 206
    iget-object p1, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    invoke-virtual {p1}, Lo/ZQ;->K()V

    .line 208
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object v1, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    invoke-static {v1}, Lo/ZQ;->c(Lo/ZQ;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2}, Lo/aeu;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 209
    iget-object p1, p0, Lo/ZQ$ActionBar;->b:Lo/ZQ;

    check-cast v0, Ljava/lang/Long;

    invoke-static {p1, v0}, Lo/ZQ;->c(Lo/ZQ;Ljava/lang/Long;)V

    return-void

    .line 193
    :cond_5
    :goto_2
    sget-object p1, Lo/ZQ;->p:Lo/ZQ$Application;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method
