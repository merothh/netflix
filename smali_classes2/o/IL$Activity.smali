.class public Lo/IL$Activity;
.super Lo/DN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Activity"
.end annotation


# instance fields
.field final synthetic c:Lo/IL;


# direct methods
.method constructor <init>(Lo/IL;Lo/DN$Application;)V
    .locals 1

    .line 1099
    iput-object p1, p0, Lo/IL$Activity;->c:Lo/IL;

    .line 1100
    new-instance v0, Lo/IL$Activity$2;

    invoke-direct {v0, p1}, Lo/IL$Activity$2;-><init>(Lo/IL;)V

    invoke-direct {p0, v0, p2}, Lo/DN;-><init>(Lo/MultiAutoCompleteTextView$Application;Lo/DN$Application;)V

    return-void
.end method

.method static synthetic a(Lo/IL$Activity;Lo/AU;)V
    .locals 0

    .line 1097
    invoke-direct {p0, p1}, Lo/IL$Activity;->c(Lo/AU;)V

    return-void
.end method

.method private c(Lo/AU;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1134
    iget-object v0, p0, Lo/IL$Activity;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-interface {p1}, Lo/AU;->f()Lo/Bv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bv;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    iput-object p1, p0, Lo/IL$Activity;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    goto :goto_0

    .line 1136
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "setTrackableFromCharacter shouldn\'t be null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 1150
    iget-object v0, p0, Lo/IL$Activity;->c:Lo/IL;

    invoke-static {v0}, Lo/IL;->j(Lo/IL;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IL$Activity;->c:Lo/IL;

    invoke-static {v0}, Lo/IL;->j(Lo/IL;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lo/IL$Activity;->c:Lo/IL;

    invoke-static {v0}, Lo/IL;->i(Lo/IL;)V

    .line 1152
    iget-object v0, p0, Lo/IL$Activity;->c:Lo/IL;

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lo/IL;->e(Lo/IL;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 1171
    invoke-super {p0, p1}, Lo/DN;->a(Z)V

    return-void
.end method

.method protected b(I)V
    .locals 0

    .line 1158
    invoke-super {p0, p1}, Lo/DN;->b(I)V

    .line 1159
    iget-object p1, p0, Lo/IL$Activity;->c:Lo/IL;

    invoke-static {p1}, Lo/IL;->c(Lo/IL;)Lo/DE;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1160
    iget-object p1, p0, Lo/IL$Activity;->c:Lo/IL;

    invoke-static {p1}, Lo/IL;->c(Lo/IL;)Lo/DE;

    move-result-object p1

    invoke-virtual {p1}, Lo/DE;->m()V

    :cond_0
    return-void
.end method

.method protected c(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;I)V"
        }
    .end annotation

    .line 1142
    invoke-super {p0, p1, p2}, Lo/DN;->c(Ljava/util/List;I)V

    .line 1143
    iget-object p2, p0, Lo/IL$Activity;->c:Lo/IL;

    invoke-static {p2, p1}, Lo/IL;->b(Lo/IL;Ljava/util/List;)Ljava/util/List;

    .line 1144
    invoke-direct {p0}, Lo/IL$Activity;->e()V

    .line 1146
    iget-object p1, p0, Lo/IL$Activity;->c:Lo/IL;

    invoke-virtual {p1}, Lo/IL;->y()V

    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 1176
    invoke-super {p0, p1}, Lo/DN;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1166
    iget-object v0, p0, Lo/IL$Activity;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/IL$Activity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lo/IL$Activity;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo/IL$Activity;->c()Z

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method
