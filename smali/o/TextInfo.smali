.class public final Lo/TextInfo;
.super Lo/ChangeScroll;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TextInfo$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/TextInfo$Application;


# instance fields
.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lo/SpellCheckerSession;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/netflix/android/moneyball/fields/ActionField;

.field private final j:Lo/SuggestionsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/TextInfo$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/TextInfo$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/TextInfo;->a:Lo/TextInfo$Application;

    return-void
.end method

.method public constructor <init>(Lo/InputBinding;Ljava/util/List;Lo/SuggestionsInfo;Lo/SpellCheckerSession;Lo/TextClassifierImpl;Lo/TextClassifierService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputBinding;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;",
            ">;",
            "Lo/SuggestionsInfo;",
            "Lo/SpellCheckerSession;",
            "Lo/TextClassifierImpl;",
            "Lo/TextClassifierService;",
            ")V"
        }
    .end annotation

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ourStoryCards"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p5, p1, p6}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p2, p0, Lo/TextInfo;->h:Ljava/util/List;

    iput-object p3, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    iput-object p4, p0, Lo/TextInfo;->g:Lo/SpellCheckerSession;

    .line 33
    iget-object p2, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p2}, Lo/SuggestionsInfo;->e()Z

    move-result p2

    iput-boolean p2, p0, Lo/TextInfo;->d:Z

    .line 45
    iget-object p2, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p2}, Lo/SuggestionsInfo;->h()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "https://assets.nflxext.com/ffe/siteui/vlv3/afbfd84e-c987-4438-99f2-8d0738d30d68/80f89692-9533-4b7b-ab0c-359825415564/US-en-20170918-popsignuptwoweeks-perspective_alpha_website_small.jpg"

    :goto_0
    iput-object p2, p0, Lo/TextInfo;->e:Ljava/lang/String;

    .line 47
    iget-object p2, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p2}, Lo/SuggestionsInfo;->f()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 48
    iget-object p3, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p3}, Lo/SuggestionsInfo;->b()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p3}, Lo/SuggestionsInfo;->d()Ljava/lang/String;

    move-result-object p3

    const-string p5, "LCFM"

    invoke-static {p5, p3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 49
    invoke-virtual {p1, p2}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p3, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p3}, Lo/SuggestionsInfo;->a()Ljava/lang/String;

    move-result-object p3

    const-string p5, "offerPrice"

    invoke-virtual {p2, p5, p3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    .line 50
    :cond_1
    sget-object p3, Lo/fR;->c:Lo/fR$StateListAnimator;

    invoke-virtual {p3}, Lo/fR$StateListAnimator;->b()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 51
    iget-object p3, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p3}, Lo/SuggestionsInfo;->i()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_3

    invoke-static {p3}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p3, 0x1

    :goto_2
    if-nez p3, :cond_4

    .line 52
    invoke-virtual {p1, p2}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 53
    iget-object p3, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p3}, Lo/SuggestionsInfo;->i()Ljava/lang/String;

    move-result-object p3

    const-string p5, "lowest_plan_price"

    invoke-virtual {p2, p5, p3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 54
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    .line 57
    :cond_4
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ap:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    .line 60
    :cond_5
    invoke-virtual {p1, p2}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_6
    :goto_3
    if-eqz p4, :cond_7

    goto :goto_4

    .line 62
    :cond_7
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->am:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p4

    :goto_4
    iput-object p4, p0, Lo/TextInfo;->c:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p1}, Lo/SuggestionsInfo;->j()Z

    move-result p1

    iput-boolean p1, p0, Lo/TextInfo;->b:Z

    .line 66
    iget-object p1, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p1}, Lo/SuggestionsInfo;->c()Z

    move-result p1

    iput-boolean p1, p0, Lo/TextInfo;->f:Z

    .line 68
    iget-object p1, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {p1}, Lo/SuggestionsInfo;->g()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object p1

    iput-object p1, p0, Lo/TextInfo;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lo/TextInfo;->d:Z

    return v0
.end method

.method public final e()V
    .locals 7

    .line 37
    iget-object v0, p0, Lo/TextInfo;->j:Lo/SuggestionsInfo;

    invoke-virtual {v0}, Lo/SuggestionsInfo;->g()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lo/TextInfo;->g()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 36
    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public final f()Lcom/netflix/android/moneyball/fields/ActionField;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/TextInfo;->i:Lcom/netflix/android/moneyball/fields/ActionField;

    return-object v0
.end method

.method public final g()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/TextInfo;->g:Lo/SpellCheckerSession;

    invoke-virtual {v0}, Lo/SpellCheckerSession;->a()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lo/TextInfo;->b:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/TextInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/TextInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lo/TextInfo;->h:Ljava/util/List;

    return-object v0
.end method
