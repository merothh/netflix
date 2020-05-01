.class public Lo/Marshaler;
.super Lo/MarshalQueryableReprocessFormatsMap;
.source ""


# direct methods
.method public constructor <init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lo/MarshalQueryableReprocessFormatsMap;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    return-void
.end method


# virtual methods
.method public synthetic b(I)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lo/Marshaler;->i(I)Lo/MarshalQueryableArray;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic g(I)Lo/MarshalQueryableParcelable;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lo/Marshaler;->i(I)Lo/MarshalQueryableArray;

    move-result-object p1

    return-object p1
.end method

.method protected i(I)Lo/MarshalQueryableArray;
    .locals 1

    .line 25
    new-instance v0, Lo/MarshalQueryableArray;

    invoke-direct {v0, p1}, Lo/MarshalQueryableArray;-><init>(I)V

    return-object v0
.end method
