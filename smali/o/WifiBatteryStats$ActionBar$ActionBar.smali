.class final Lo/WifiBatteryStats$ActionBar$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HealthStatsWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WifiBatteryStats$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic d:Lo/WifiBatteryStats$ActionBar;


# direct methods
.method private constructor <init>(Lo/WifiBatteryStats$ActionBar;)V
    .locals 0

    .line 1523
    iput-object p1, p0, Lo/WifiBatteryStats$ActionBar$ActionBar;->d:Lo/WifiBatteryStats$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/WifiBatteryStats$ActionBar;Lo/WifiBatteryStats$5;)V
    .locals 0

    .line 1522
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$ActionBar;-><init>(Lo/WifiBatteryStats$ActionBar;)V

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;)Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;
    .locals 1

    .line 1560
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$ActionBar;->d()Lo/InputBinding;

    move-result-object v0

    invoke-static {p1, v0}, Lo/LoginFilter;->d(Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;Lo/InputBinding;)V

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;
    .locals 1

    .line 1591
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$ActionBar;->d:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->g(Lo/WifiBatteryStats$ActionBar;)Lo/GateKeeperResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lo/BaseKeyListener;->d(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;Lo/GateKeeperResponse;)V

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;
    .locals 1

    .line 1566
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$ActionBar;->d()Lo/InputBinding;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SpanWatcher;->b(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;Lo/InputBinding;)V

    .line 1567
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$ActionBar;->d:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->u(Lo/WifiBatteryStats$ActionBar;)Lo/PrecomputedText;

    move-result-object v0

    invoke-static {p1, v0}, Lo/SpanWatcher;->b(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;Lo/SpanSet;)V

    return-object p1
.end method

.method private c(Lo/StaticLayout;)Lo/StaticLayout;
    .locals 1

    .line 1573
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$ActionBar;->d()Lo/InputBinding;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Formatter;->e(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;Lo/InputBinding;)V

    return-object p1
.end method

.method private d(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;
    .locals 1

    .line 1598
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$ActionBar;->d:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v0}, Lo/WifiBatteryStats$ActionBar;->w(Lo/WifiBatteryStats$ActionBar;)Lo/ActionMenuView;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Eu;->e(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;Lo/WebViewProvider;)V

    return-object p1
.end method

.method private d()Lo/InputBinding;
    .locals 3

    .line 1528
    new-instance v0, Lo/InputBinding;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$ActionBar;->d:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v1}, Lo/WifiBatteryStats$ActionBar;->d(Lo/WifiBatteryStats$ActionBar;)Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    move-result-object v1

    invoke-static {v1}, Lo/SubscriptSpan;->e(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$ActionBar;->d:Lo/WifiBatteryStats$ActionBar;

    invoke-static {v2}, Lo/WifiBatteryStats$ActionBar;->e(Lo/WifiBatteryStats$ActionBar;)Lo/SystemTextClassifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/InputBinding;-><init>(Landroid/content/Context;Lo/SystemTextClassifier;)V

    return-object v0
.end method

.method private e(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;
    .locals 1

    .line 1585
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$ActionBar;->d()Lo/InputBinding;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Formatter;->e(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;Lo/InputBinding;)V

    return-object p1
.end method

.method private e(Lo/Time;)Lo/Time;
    .locals 1

    .line 1579
    invoke-direct {p0}, Lo/WifiBatteryStats$ActionBar$ActionBar;->d()Lo/InputBinding;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Formatter;->e(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;Lo/InputBinding;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V
    .locals 0

    .line 1536
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$ActionBar;->c(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)V
    .locals 0

    .line 1552
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$ActionBar;->b(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;)V
    .locals 0

    .line 1548
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$ActionBar;->e(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;)V
    .locals 0

    .line 1556
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$ActionBar;->d(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    return-void
.end method

.method public b(Lo/Time;)V
    .locals 0

    .line 1544
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$ActionBar;->e(Lo/Time;)Lo/Time;

    return-void
.end method

.method public d(Lo/StaticLayout;)V
    .locals 0

    .line 1540
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$ActionBar;->c(Lo/StaticLayout;)Lo/StaticLayout;

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;)V
    .locals 0

    .line 1532
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$ActionBar;->b(Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;)Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;

    return-void
.end method
