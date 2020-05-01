.class public final Lo/agk;
.super Lo/agh;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/agk$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Lo/agk$TaskDescription;

.field private c:Lo/OneTimeUseBuilder;

.field private d:Lo/OneTimeUseBuilder;

.field private e:Lo/OneTimeUseBuilder;

.field private f:I


# direct methods
.method public constructor <init>(Lo/TableLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lo/agh;-><init>(Lo/TableLayout;)V

    .line 21
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agk;->e:Lo/OneTimeUseBuilder;

    return-void
.end method


# virtual methods
.method public A()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->f(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->g(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->h(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z

    move-result v0

    return v0
.end method

.method public D()Lo/agp;
    .locals 3

    .line 108
    iget-object v0, p0, Lo/agk;->e:Lo/OneTimeUseBuilder;

    .line 109
    iget-object v1, p0, Lo/agk;->b:Lo/TableLayout;

    .line 110
    const-class v2, Lo/agp;

    .line 108
    invoke-virtual {v0, v1, v2}, Lo/OneTimeUseBuilder;->c(Lo/TableLayout;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agp;

    if-eqz v0, :cond_0

    const-string v1, "topNodeVideoRef.getResol\u2026ow NullPointerException()"

    .line 111
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public F()Lo/agp;
    .locals 3

    .line 113
    iget-object v0, p0, Lo/agk;->c:Lo/OneTimeUseBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/agk;->b:Lo/TableLayout;

    const-class v2, Lo/agp;

    invoke-virtual {v0, v1, v2}, Lo/OneTimeUseBuilder;->c(Lo/TableLayout;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agp;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    .line 158
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " images="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agk;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->d:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->e(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lo/agi;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "video"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lo/agk;->e:Lo/OneTimeUseBuilder;

    check-cast p1, Lo/agi;

    goto :goto_0

    :sswitch_1
    const-string v0, "supplemental"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lo/agk;->c:Lo/OneTimeUseBuilder;

    check-cast p1, Lo/agi;

    goto :goto_0

    :sswitch_2
    const-string v0, "detail"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    check-cast p1, Lo/agi;

    goto :goto_0

    :sswitch_3
    const-string v0, "tagsVideo"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lo/agk;->d:Lo/OneTimeUseBuilder;

    check-cast p1, Lo/agi;

    :goto_0
    return-object p1

    .line 54
    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x62df681e -> :sswitch_3
        -0x4f95e7af -> :sswitch_2
        -0x4f03655c -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v0, "video"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agk;->e:Lo/OneTimeUseBuilder;

    goto :goto_3

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.falkor.Ref"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agk;->e:Lo/OneTimeUseBuilder;

    goto :goto_3

    :sswitch_1
    const-string v0, "supplemental"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    instance-of p1, p2, Lo/OneTimeUseBuilder;

    if-nez p1, :cond_3

    move-object p2, v1

    :cond_3
    move-object v1, p2

    check-cast v1, Lo/OneTimeUseBuilder;

    :goto_0
    iput-object v1, p0, Lo/agk;->c:Lo/OneTimeUseBuilder;

    goto :goto_3

    :sswitch_2
    const-string v0, "detail"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    instance-of p1, p2, Lo/agk$TaskDescription;

    if-nez p1, :cond_5

    move-object p2, v1

    :cond_5
    move-object v1, p2

    check-cast v1, Lo/agk$TaskDescription;

    :goto_1
    iput-object v1, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    goto :goto_3

    :sswitch_3
    const-string v0, "tagsVideo"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    instance-of p1, p2, Lo/SettingsSlicesContract;

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    instance-of p1, p2, Lo/OneTimeUseBuilder;

    if-nez p1, :cond_7

    move-object p2, v1

    :cond_7
    move-object v1, p2

    check-cast v1, Lo/OneTimeUseBuilder;

    :goto_2
    iput-object v1, p0, Lo/agk;->d:Lo/OneTimeUseBuilder;

    :cond_8
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62df681e -> :sswitch_3
        -0x4f95e7af -> :sswitch_2
        -0x4f03655c -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch
.end method

.method public d()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->i()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    :goto_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "key"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p1}, Lo/agk;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "video"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lo/OneTimeUseBuilder;

    invoke-direct {v1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object v1, v0, Lo/agk;->e:Lo/OneTimeUseBuilder;

    check-cast v1, Lo/BlockedNumberContract;

    goto :goto_0

    :sswitch_1
    const-string v2, "supplemental"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lo/OneTimeUseBuilder;

    invoke-direct {v1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object v1, v0, Lo/agk;->c:Lo/OneTimeUseBuilder;

    check-cast v1, Lo/BlockedNumberContract;

    goto :goto_0

    :sswitch_2
    const-string v2, "detail"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lo/agk$TaskDescription;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1fff

    const/16 v18, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lo/agk$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;ZZLjava/util/List;Ljava/util/List;Ljava/lang/String;ILo/amc;)V

    iput-object v1, v0, Lo/agk;->a:Lo/agk$TaskDescription;

    check-cast v1, Lo/BlockedNumberContract;

    goto :goto_0

    :sswitch_3
    const-string v2, "tagsVideo"

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lo/OneTimeUseBuilder;

    invoke-direct {v1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object v1, v0, Lo/agk;->d:Lo/OneTimeUseBuilder;

    check-cast v1, Lo/BlockedNumberContract;

    .line 59
    :goto_0
    move-object v2, v1

    check-cast v2, Lo/agi;

    :goto_1
    return-object v2

    .line 64
    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62df681e -> :sswitch_3
        -0x4f95e7af -> :sswitch_2
        -0x4f03655c -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch
.end method

.method public d(I)V
    .locals 0

    .line 122
    iput p1, p0, Lo/agk;->f:I

    return-void
.end method

.method public e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->d()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    :goto_0
    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0}, Lo/agk;->c(Ljava/lang/String;Lo/agi;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public synthetic g()Lo/AK;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lo/agk;->F()Lo/agp;

    move-result-object v0

    check-cast v0, Lo/AK;

    return-object v0
.end method

.method public synthetic h()Lo/agg;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lo/agk;->D()Lo/agp;

    move-result-object v0

    check-cast v0, Lo/agg;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AG;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->e(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z

    move-result v0

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/ListOfTagSummary;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lo/agk;->d:Lo/OneTimeUseBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/agk;->b:Lo/TableLayout;

    const-class v2, Lo/agp;

    invoke-virtual {v0, v1, v2}, Lo/OneTimeUseBuilder;->c(Lo/TableLayout;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agp;->bn()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public l()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;
    .locals 1

    .line 130
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->j()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    :goto_0
    return-object v0
.end method

.method public m()I
    .locals 1

    .line 120
    iget v0, p0, Lo/agk;->f:I

    return v0
.end method

.method public n()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lo/agk;->D()Lo/agp;

    move-result-object v0

    invoke-virtual {v0}, Lo/agp;->bH()Z

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->f()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r()Ljava/lang/Integer;
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lo/agk;->a:Lo/agk$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/agk$TaskDescription;->g()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->i(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 5

    .line 145
    iget-object v0, p0, Lo/agk;->e:Lo/OneTimeUseBuilder;

    iget-object v1, p0, Lo/agk;->b:Lo/TableLayout;

    const-class v2, Lo/agp;

    invoke-virtual {v0, v1, v2}, Lo/OneTimeUseBuilder;->c(Lo/TableLayout;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-virtual {p0}, Lo/agk;->i()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lo/agk;->e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;->PARTNER_EXCLUSIVE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public w()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->b(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$ActionBar;->j(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)Z

    move-result v0

    return v0
.end method
