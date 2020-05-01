.class public abstract Lo/ActivityChooserView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ActivityChooserView$Application;,
        Lo/ActivityChooserView$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lo/ActivityChooserView$TaskDescription;


# instance fields
.field private final b:Lo/WebViewUpdateService;

.field private final c:Lo/AbsSpinner;

.field private final d:Lo/AnalogClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalogClock<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ActivityChooserView$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ActivityChooserView$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V
    .locals 1

    const-string v0, "shareUtils"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUtils"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ActivityChooserView;->c:Lo/AbsSpinner;

    iput-object p2, p0, Lo/ActivityChooserView;->b:Lo/WebViewUpdateService;

    .line 60
    new-instance p1, Lo/ActivityChooserView$Activity;

    invoke-direct {p1, p0}, Lo/ActivityChooserView$Activity;-><init>(Lo/ActivityChooserView;)V

    check-cast p1, Lo/AnalogClock;

    iput-object p1, p0, Lo/ActivityChooserView;->d:Lo/AnalogClock;

    return-void
.end method


# virtual methods
.method public abstract a(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "TT;>;",
            "Lo/AnalogClock<",
            "TT;>;II)",
            "Lio/reactivex/Single<",
            "Lo/ActivityChooserView$Application;",
            ">;"
        }
    .end annotation
.end method

.method public final b()Lo/AnalogClock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AnalogClock<",
            "TT;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/ActivityChooserView;->d:Lo/AnalogClock;

    return-object v0
.end method

.method public abstract c(Lo/Serializable;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected final d()Lo/AbsSpinner;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/ActivityChooserView;->c:Lo/AbsSpinner;

    return-object v0
.end method

.method protected final e()Lo/WebViewUpdateService;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/ActivityChooserView;->b:Lo/WebViewUpdateService;

    return-object v0
.end method
