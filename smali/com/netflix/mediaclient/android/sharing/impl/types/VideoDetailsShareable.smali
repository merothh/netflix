.class public final Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$ActionBar;,
        Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/mediaclient/android/sharing/impl/types/ShareableInternal<",
        "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final d:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$ActionBar;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$ActionBar;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;)Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    return-object p0
.end method


# virtual methods
.method public a(Lo/Serializable;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
            ">;>;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lo/AnalogClock;->c:Lo/AnalogClock$StateListAnimator;

    .line 29
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const/16 v2, 0x9

    new-array v2, v2, [Lo/AnalogClock;

    .line 31
    new-instance v3, Lo/AdapterViewAnimator;

    sget-object v4, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v4}, Lo/WebViewFactoryProvider$TaskDescription;->j()Lo/WebViewFactoryProvider;

    move-result-object v4

    invoke-direct {v3, v4}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v3, Lo/AnalogClock;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 32
    new-instance v3, Lo/AdapterViewAnimator;

    sget-object v4, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v4}, Lo/WebViewFactoryProvider$TaskDescription;->b()Lo/WebViewFactoryProvider;

    move-result-object v4

    invoke-direct {v3, v4}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v3, Lo/AnalogClock;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 33
    new-instance v3, Lo/AdapterView;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v5, v6}, Lo/AdapterView;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;ILo/amc;)V

    invoke-virtual {v3}, Lo/AdapterView;->b()Lo/AnalogClock;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v2, v7

    .line 34
    new-instance v3, Lo/AdapterViewAnimator;

    sget-object v7, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v7}, Lo/WebViewFactoryProvider$TaskDescription;->c()Lo/WebViewFactoryProvider;

    move-result-object v7

    invoke-direct {v3, v7}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v3, Lo/AnalogClock;

    aput-object v3, v2, v5

    .line 35
    new-instance v3, Lo/AutoCompleteTextView;

    invoke-direct {v3, v6, v6, v5, v6}, Lo/AutoCompleteTextView;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;ILo/amc;)V

    invoke-virtual {v3}, Lo/AutoCompleteTextView;->a()Lo/AnalogClock;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v2, v7

    .line 36
    new-instance v3, Lo/AdapterViewAnimator;

    sget-object v7, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v7}, Lo/WebViewFactoryProvider$TaskDescription;->i()Lo/WebViewFactoryProvider;

    move-result-object v7

    invoke-direct {v3, v7}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v3, Lo/AnalogClock;

    const/4 v7, 0x5

    aput-object v3, v2, v7

    .line 37
    new-instance v3, Lo/AdapterViewAnimator;

    sget-object v7, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v7}, Lo/WebViewFactoryProvider$TaskDescription;->g()Lo/WebViewFactoryProvider;

    move-result-object v7

    invoke-direct {v3, v7}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v3, Lo/AnalogClock;

    const/4 v7, 0x6

    aput-object v3, v2, v7

    .line 38
    new-instance v3, Lo/ActivityChooserModel;

    invoke-direct {v3, v4}, Lo/ActivityChooserModel;-><init>(Z)V

    check-cast v3, Lo/AnalogClock;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 39
    new-instance v3, Lo/AppSecurityPermissions;

    invoke-direct {v3, v6, v6, v5, v6}, Lo/AppSecurityPermissions;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILo/amc;)V

    check-cast v3, Lo/AnalogClock;

    const/16 v4, 0x8

    aput-object v3, v2, v4

    .line 30
    invoke-static {v2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lo/AnalogClock$StateListAnimator;->b(Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$TaskDescription;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;Lo/Serializable;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "ShareTarget.validateTarg\u2026uController(it)\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->c()Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    return-object v0
.end method

.method public c(Lo/AnalogClock;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnalogClock<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const-string v0, "target"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lo/AnalogClock;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnalogClock<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "target"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.netflix.com/title/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "s=a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&trkid=13747225"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Lo/AnalogClock;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lo/AnalogClock;)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnalogClock<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const-string v0, "target"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget v0, Lo/WebViewProviderResponse$TaskDescription;->b:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 58
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->d(Lo/AnalogClock;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ICUMessageFormat.getForm\u2026t))\n            .format()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable;->d:Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
