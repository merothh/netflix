.class public final Lo/LauncherIcons;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LauncherIcons$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/LauncherIcons$Application;


# instance fields
.field private final a:Lo/KeyValueSettingObserver;

.field private final c:Lo/InputBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LauncherIcons$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/LauncherIcons$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/LauncherIcons;->d:Lo/LauncherIcons$Application;

    return-void
.end method

.method public constructor <init>(Lo/InputBinding;Lo/KeyValueSettingObserver;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LauncherIcons;->c:Lo/InputBinding;

    iput-object p2, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/JsonScope;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 28
    iget-object v1, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    invoke-virtual {v1}, Lo/KeyValueSettingObserver;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/AutoGrowArray;

    invoke-virtual {v4}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "smarttv"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Lo/AutoGrowArray;

    if-eqz v2, :cond_2

    .line 30
    new-instance v1, Lo/JsonScope;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->ex:I

    iget-object v5, p0, Lo/LauncherIcons;->c:Lo/InputBinding;

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->bm:I

    invoke-virtual {v5, v6}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->Q:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lo/JsonScope;-><init>(Lo/AutoGrowArray;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_2
    iget-object v1, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    invoke-virtual {v1}, Lo/KeyValueSettingObserver;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/AutoGrowArray;

    invoke-virtual {v4}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tablet"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    check-cast v2, Lo/AutoGrowArray;

    if-eqz v2, :cond_5

    .line 35
    new-instance v1, Lo/JsonScope;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->ep:I

    iget-object v5, p0, Lo/LauncherIcons;->c:Lo/InputBinding;

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->bi:I

    invoke-virtual {v5, v6}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->M:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lo/JsonScope;-><init>(Lo/AutoGrowArray;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v2, :cond_6

    const/4 v1, 0x1

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/AutoGrowArray;->a(Ljava/lang/Boolean;)V

    .line 40
    :cond_6
    iget-object v1, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    invoke-virtual {v1}, Lo/KeyValueSettingObserver;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/AutoGrowArray;

    invoke-virtual {v4}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "desktop"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_8
    move-object v2, v3

    :goto_2
    check-cast v2, Lo/AutoGrowArray;

    if-eqz v2, :cond_9

    .line 42
    new-instance v1, Lo/JsonScope;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->eo:I

    iget-object v5, p0, Lo/LauncherIcons;->c:Lo/InputBinding;

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->bk:I

    invoke-virtual {v5, v6}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->L:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lo/JsonScope;-><init>(Lo/AutoGrowArray;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_9
    iget-object v1, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    invoke-virtual {v1}, Lo/KeyValueSettingObserver;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/AutoGrowArray;

    invoke-virtual {v4}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "settop"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_b
    move-object v2, v3

    :goto_3
    check-cast v2, Lo/AutoGrowArray;

    if-eqz v2, :cond_c

    .line 47
    new-instance v1, Lo/JsonScope;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->et:I

    iget-object v5, p0, Lo/LauncherIcons;->c:Lo/InputBinding;

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->bl:I

    invoke-virtual {v5, v6}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->S:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lo/JsonScope;-><init>(Lo/AutoGrowArray;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_c
    iget-object v1, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    invoke-virtual {v1}, Lo/KeyValueSettingObserver;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/AutoGrowArray;

    invoke-virtual {v4}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "streamingmedia"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    :cond_e
    move-object v2, v3

    :goto_4
    check-cast v2, Lo/AutoGrowArray;

    if-eqz v2, :cond_f

    .line 52
    new-instance v1, Lo/JsonScope;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->eq:I

    iget-object v5, p0, Lo/LauncherIcons;->c:Lo/InputBinding;

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->bo:I

    invoke-virtual {v5, v6}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->P:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lo/JsonScope;-><init>(Lo/AutoGrowArray;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_f
    iget-object v1, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    invoke-virtual {v1}, Lo/KeyValueSettingObserver;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/AutoGrowArray;

    invoke-virtual {v4}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "playstation"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_11
    move-object v2, v3

    :goto_5
    check-cast v2, Lo/AutoGrowArray;

    if-eqz v2, :cond_12

    .line 57
    new-instance v1, Lo/JsonScope;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->er:I

    sget v5, Lcom/netflix/mediaclient/ui/R$Activity;->J:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lo/JsonScope;-><init>(Lo/AutoGrowArray;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_12
    iget-object v1, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    invoke-virtual {v1}, Lo/KeyValueSettingObserver;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/AutoGrowArray;

    invoke-virtual {v4}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xbox"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_6

    :cond_14
    move-object v2, v3

    :goto_6
    check-cast v2, Lo/AutoGrowArray;

    if-eqz v2, :cond_15

    .line 62
    new-instance v1, Lo/JsonScope;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->eu:I

    sget v5, Lcom/netflix/mediaclient/ui/R$Activity;->W:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lo/JsonScope;-><init>(Lo/AutoGrowArray;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_15
    iget-object v1, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    invoke-virtual {v1}, Lo/KeyValueSettingObserver;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/AutoGrowArray;

    invoke-virtual {v4}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wiiu"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_7

    :cond_17
    move-object v2, v3

    :goto_7
    check-cast v2, Lo/AutoGrowArray;

    if-eqz v2, :cond_18

    .line 67
    new-instance v1, Lo/JsonScope;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->ev:I

    sget v5, Lcom/netflix/mediaclient/ui/R$Activity;->R:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lo/JsonScope;-><init>(Lo/AutoGrowArray;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_18
    iget-object v1, p0, Lo/LauncherIcons;->a:Lo/KeyValueSettingObserver;

    invoke-virtual {v1}, Lo/KeyValueSettingObserver;->e()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/AutoGrowArray;

    invoke-virtual {v4}, Lo/AutoGrowArray;->b()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "roku"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_8

    :cond_1a
    move-object v2, v3

    :goto_8
    check-cast v2, Lo/AutoGrowArray;

    if-eqz v2, :cond_1b

    .line 72
    new-instance v1, Lo/JsonScope;

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->es:I

    sget v5, Lcom/netflix/mediaclient/ui/R$Activity;->O:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v4, v3, v5}, Lo/JsonScope;-><init>(Lo/AutoGrowArray;ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-object v0
.end method
