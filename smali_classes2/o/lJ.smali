.class public final Lo/lJ;
.super Lo/ly;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PLAYER_PLAY"

    .line 83
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-direct/range {p0 .. p8}, Lo/lJ;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "originator"

    const-string p2, "USER"

    .line 85
    invoke-virtual {p0, p1, p2}, Lo/lJ;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "groupNames"

    .line 86
    invoke-virtual {p0, p1, p9}, Lo/lJ;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uiVer"

    .line 87
    invoke-virtual {p0, p1, p10}, Lo/lJ;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "catalogId"

    .line 97
    invoke-virtual {p0, v0, p1}, Lo/lJ;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "trackId"

    .line 98
    invoke-virtual {p0, p1, p2}, Lo/lJ;->b(Ljava/lang/String;I)V

    const-string p1, "esn"

    .line 99
    invoke-virtual {p0, p1, p3}, Lo/lJ;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string p2, "enablePostPlay"

    .line 100
    invoke-virtual {p0, p2, p1}, Lo/lJ;->c(Ljava/lang/String;Z)V

    const-string p2, "enableSkipIntro"

    .line 101
    invoke-virtual {p0, p2, p1}, Lo/lJ;->c(Ljava/lang/String;Z)V

    const-string p2, "controllerName"

    .line 102
    invoke-virtual {p0, p2, p8}, Lo/lJ;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p2

    invoke-interface {p2}, Lo/bO;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "isPinVerified"

    .line 104
    invoke-virtual {p0, p2, p1}, Lo/lJ;->c(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p6, :cond_1

    const-string p2, "isPreReleasePinVerified"

    .line 107
    invoke-virtual {p0, p2, p1}, Lo/lJ;->c(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p7, :cond_2

    const-string p2, "prereleasePin"

    .line 110
    invoke-virtual {p0, p2, p7}, Lo/lJ;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string p2, "episodeId"

    .line 113
    invoke-virtual {p0, p2, p4}, Lo/lJ;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p5, :cond_4

    .line 115
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_4

    .line 116
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "startTime"

    invoke-virtual {p0, p3, p2}, Lo/lJ;->b(Ljava/lang/String;I)V

    :cond_4
    const-string p2, "enableNrdpPostPlay"

    .line 118
    invoke-virtual {p0, p2, p1}, Lo/lJ;->c(Ljava/lang/String;Z)V

    return-void
.end method
